void leaf() {
  __asm__("cmovnbq %rcx, %rbx");
  }

void main() {
  leaf();
}