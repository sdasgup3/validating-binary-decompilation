void leaf() {
  __asm__("cmovpeq %rcx, %rbx");
  }

void main() {
  leaf();
}