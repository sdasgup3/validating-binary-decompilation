void leaf() {
  __asm__("cmovbq %rcx, %rbx");
  }

void main() {
  leaf();
}