void leaf() {
  __asm__("cmovzq %rcx, %rbx");
  }

void main() {
  leaf();
}