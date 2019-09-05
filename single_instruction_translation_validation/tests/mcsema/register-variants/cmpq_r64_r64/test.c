void leaf() {
  __asm__("cmpq %rcx, %rbx");
  }

void main() {
  leaf();
}