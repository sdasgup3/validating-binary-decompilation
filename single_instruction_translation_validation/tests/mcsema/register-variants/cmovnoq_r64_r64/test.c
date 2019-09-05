void leaf() {
  __asm__("cmovnoq %rcx, %rbx");
  }

void main() {
  leaf();
}